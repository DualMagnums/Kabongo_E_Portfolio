//light and dark theme

const body = document.body

const btnTheme = document.querySelector('.fa-moon')
const btnHamburger = document.querySelector('.fa-bars')

const addThemeClass = (bodyClass, btnClass) => {
  body.classList.add(bodyClass)
  btnTheme.classList.add(btnClass)
}

const getBodyTheme = localStorage.getItem('portfolio-theme')
const getBtnTheme = localStorage.getItem('portfolio-btn-theme')

addThemeClass(getBodyTheme, getBtnTheme)

const isDark = () => body.classList.contains('dark')

const setTheme = (bodyClass, btnClass) => {

	body.classList.remove(localStorage.getItem('portfolio-theme'))
	btnTheme.classList.remove(localStorage.getItem('portfolio-btn-theme'))

  addThemeClass(bodyClass, btnClass)

	localStorage.setItem('portfolio-theme', bodyClass)
	localStorage.setItem('portfolio-btn-theme', btnClass)
}

const toggleTheme = () =>
	isDark() ? setTheme('light', 'fa-moon') : setTheme('dark', 'fa-sun')

btnTheme.addEventListener('click', toggleTheme)

//hamburger menu

const displayList = () => {
	const navUl = document.querySelector('.nav__list')

	if (btnHamburger.classList.contains('fa-bars')) {
		btnHamburger.classList.remove('fa-bars')
		btnHamburger.classList.add('fa-times')
		navUl.classList.add('display-nav-list')
	} else {
		btnHamburger.classList.remove('fa-times')
		btnHamburger.classList.add('fa-bars')
		navUl.classList.remove('display-nav-list')
	}
}

btnHamburger.addEventListener('click', displayList);

//greensock animations

{
    gsap.from(".about__name", {duration: 3, x:500, autoAlpha: 0, onComplete: tweenCompleted});

    function tweenCompleted(){
        console.log("the animation has completed")
    }
  
	 let tl = gsap.timeline();
	 tl.staggerFrom(".anim-img", 1, {autoAlpha:0, scale:0, ease: "elastic.out(0.2)"}, .5);
};

//scrollsies

const scrollUp = () => {
	const btnScrollTop = document.querySelector('.scroll-top')

	if (
		body.scrollTop > 500 ||
		document.documentElement.scrollTop > 500
	) {
		btnScrollTop.style.display = 'block'
	} else {
		btnScrollTop.style.display = 'none'
	}
}

document.addEventListener('scroll', scrollUp)

//carousel

const carouPics = document.querySelectorAll('.carousel-item');
let currentPic = 0;

function showPic(index) {

	carouPics.forEach(item => {
    item.style.display = 'none';
  });


  carouPics[index].style.display = 'block';
}

function nextPic() {
  currentPic = (currentPic + 1) % carouPics.length;
  showPic(currentPic);
}

function previousPic() {
  currentPic = (currentPic - 1 + carouPics.length) % carouPics.length;
  showPic(currentPic);
}

showPic(currentPic);

document.getElementById('nextBtn').addEventListener('click', nextPic);
document.getElementById('prevBtn').addEventListener('click', previousPic);
