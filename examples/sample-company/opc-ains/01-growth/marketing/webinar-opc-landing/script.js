// Countdown Timer
function updateCountdown() {
    const targetDate = new Date();
    targetDate.setDate(targetDate.getDate() + 4); // 4 days from now
    targetDate.setHours(targetDate.getHours() + 11);
    targetDate.setMinutes(targetDate.getMinutes() + 32);

    function update() {
        const now = new Date().getTime();
        const distance = targetDate - now;

        const days = Math.floor(distance / (1000 * 60 * 60 * 24));
        const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((distance % (1000 * 60)) / 1000);

        document.getElementById('days').innerText = String(days).padStart(2, '0');
        document.getElementById('hours').innerText = String(hours).padStart(2, '0');
        document.getElementById('minutes').innerText = String(minutes).padStart(2, '0');
        document.getElementById('seconds').innerText = String(seconds).padStart(2, '0');

        if (distance < 0) {
            clearInterval(timer);
            document.querySelector('.timer').innerHTML = "WEBINAR ĐANG DIỄN RA";
        }
    }

    update();
    const timer = setInterval(update, 1000);
}

// Form Submission Simulation
document.getElementById('registrationForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const btn = this.querySelector('button');
    const originalText = btn.innerText;
    
    btn.innerText = 'Đang xử lý...';
    btn.disabled = true;

    setTimeout(() => {
        alert('Chúc mừng! Bạn đã đăng ký thành công. Link tham dự đã được gửi vào email của bạn.');
        btn.innerText = 'Đã đăng ký thành công!';
        this.reset();
    }, 1500);
});

// Smooth Scroll
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

// Init
updateCountdown();
