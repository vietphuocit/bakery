function toast({ title = "", message = "", type = "info", duration = 3000 }) {
	const main = document.getElementById("toast");
	if (main) {
		const toast = document.createElement("div");

		// Auto remove toast
		const autoRemoveId = setTimeout(function() {
			main.removeChild(toast);
		}, duration + 1000);

		// Remove toast when clicked
		toast.onclick = function(e) {
			if (e.target.closest(".toast__close")) {
				main.removeChild(toast);
				clearTimeout(autoRemoveId);
			}
		};

		const icons = {
			success: "fas fa-check-circle",
			info: "fas fa-info-circle",
			warning: "fas fa-exclamation-circle",
			error: "fas fa-exclamation-circle"
		};
		const icon = icons[type];
		const delay = (duration / 1000).toFixed(2);

		toast.classList.add("toast", `toast--${type}`);
		toast.style.animation = `slideInLeft ease .3s, fadeOut linear 1s ${delay}s forwards`;

		toast.innerHTML = `
                    <div class="toast__icon">
                        <i class="${icon}"></i>
                    </div>
                    <div class="toast__body">
                        <h3 class="toast__title">${title}</h3>
                        <p class="toast__msg">${message}</p>
                    </div>
                    <div class="toast__close">
                        <i class="fas fa-times"></i>
                    </div>
                `;
		main.appendChild(toast);
	}
}

(function($) {

	$('.set-bg').each(function() {
		var bg = $(this).data('setbg');
		$(this).css('background-image', 'url(' + bg + ')');
	});

	$('#register').click(() => {
		container.classList.add('right-panel-active');
	});

	$('#login').click(() => {
		container.classList.remove('right-panel-active');
	});

	$('#loginForm').submit(function(event) {
		event.preventDefault();

		const username = $('#usernameLogin').val().trim();
		const password = $('#passwordLogin').val().trim();

		if (username === '') {
			$('#usernameLogin').css('box-shadow', '0 0 4px 0px red')
			return;
		}

		if (password === '') {
			$('#passwordLogin').css('box-shadow', '0 0 4px 0px red')
			return;
		}

		// Submit the form
		$(this).unbind('submit').submit();
	});

	$('#registerForm').submit(function(event) {
		event.preventDefault();

		const fullName = $('#nameRegister').val().trim();
		const username = $('#usernameRegister').val().trim();
		const password = $('#passwordRegister').val().trim();
		const rePassword = $('#rePasswordRegister').val().trim();

		if (fullName === '') {
			$('#nameRegister').css('box-shadow', '0 0 4px 0px red')
			return;
		}

		if (username === '') {
			$('#usernameRegister').css('box-shadow', '0 0 4px 0px red')
			return;
		}

		if (password === '') {
			$('#passwordRegister').css('box-shadow', '0 0 4px 0px red')
			return;
		}
 
		if (rePassword !== password) {
			$('#rePasswordRegister').css('box-shadow', '0 0 4px 0px red')
			return;
		}

		// Submit the form
		$(this).unbind('submit').submit();
	});

	$('input').each(function() {
		$(this).on(('input'), function() {
			$(this).css('box-shadow', 'none');
		});
	});

})(jQuery);