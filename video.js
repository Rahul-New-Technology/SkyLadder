/**
 * 
 */

  		document.addEventListener('DOMContentLoaded', function() {
			video1.addEventListener('ended', function() {
				video1.style.display = 'none';
				video2.style.display = 'block';
				video2.play();
			});

			video2.addEventListener('ended', function() {
				video2.style.display = 'none';
				video1.style.display = 'block';
				video1.play();
			});

			// Start playing the first video when the page loads
			video1.style.display = 'block';
			video2.style.display = 'none';
			video1.play();
		});
		