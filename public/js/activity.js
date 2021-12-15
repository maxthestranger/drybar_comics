

const data = ['bat', 'bones', 'cauldron', 'dracula', 'eye', 'pumpkin']

let correct = ''

const cardCon = document.querySelector('#cardCon')

function createCards(title){
    let card = document.createElement('div');
    card.classList.add('card-front')
    card.innerHTML = `
        <img class="card-value invisible" alt="${title}" src="/img/activity/${title}.png">
    `
    cardCon.appendChild(card)
}

function reShuffle(data){
    for (let i = data.length - 1; i > 0; i--) {
        const randIndex = Math.floor(Math.random() * (i + 1));
        [data[i], data[randIndex]] = [data[randIndex], data[i]];
    }

    return data
}

function checkWin(card, gameText){
    let image = card.children[0]

    if(image.alt === correct){
        gameText.innerText = 'Woorray!! You Guessed Right'
        image.classList.remove('invisible')
        image.classList.add('visible')
    }else {
        validate(image)
    }
}

function validate(image){
    let timer = setInterval(() => {
        image.classList.remove('visible')
        image.classList.add('invisible')
    }, 800)

    image.classList.remove('invisible')
    image.classList.add('visible')
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    reShuffle(data)
    data.map((card, index) => {
        createCards(card)
    })
    ready()
}

function ready() {
    let cards = Array.from(document.getElementsByClassName('card-front'));
    let gameText = document.querySelector('#game_text');
    correct = data[Math.round(Math.random() * (data.length - 1))]
    document.querySelector('.quiz span').innerText = correct

    cards.forEach(card => {
        card.addEventListener('click', () => {
            checkWin(card, gameText)
        });
    });
}