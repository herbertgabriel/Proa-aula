class Funcionario {
    constructor(nome, cargo) {
        this._nome = nome;
        this._cargo = cargo;
        this._atividades = [];
    }

    get nome() {
        return this._nome;
    }

    set nome(valor) {
        this._nome = valor;
    }

    adicionarAtividade(atividade) {
        this._atividades.push(atividade);
    }

    listarAtividades() {
        console.log(${this._nome} (${this._cargo}) tem as seguintes atividades:);
        this._atividades.forEach((atividade, index) => {
            console.log(${index + 1}. ${atividade});
        });
    }
}

class Engenheiro extends Funcionario {
    constructor(nome) {
        super(nome, 'Engenheiro');
    }

    reportarBug(bug) {
        this.adicionarAtividade(Relatar bug: ${bug});
    }
}

class Designer extends Funcionario {
    constructor(nome) {
        super(nome, 'Designer');
    }

    criarDesign(design) {
        this.adicionarAtividade(Criar design: ${design});
    }
}

function criarFuncionario(tipo, nome) {
    let funcionario;
    if (tipo === 'Engenheiro') {
        funcionario = new Engenheiro(nome);
    } else if (tipo === 'Designer') {
        funcionario = new Designer(nome);
    } else {
        console.log('Tipo de funcionário desconhecido.');
        return null;
    }

    return funcionario;
}

const engenheiro = criarFuncionario('Engenheiro', 'Carlos');
engenheiro.reportarBug('Bug no sistema de login');
engenheiro.listarAtividades();

const designer = criarFuncionario('Designer', 'Pamela');
designer.criarDesign('Novo logo para o proa');
designer.listarAtividades();
