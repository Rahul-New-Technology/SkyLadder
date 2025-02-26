
        document.addEventListener("DOMContentLoaded", function() {
        const likeButton = document.getElementById('likeButton');
        const likeCount = document.getElementById('likeCount');

        function updateLikeCount() {
            fetch('LikeServlet')
                .then(response => response.json())
                .then(data => {
                    if (data.count !== undefined) {
                        likeCount.textContent = data.count;
                        
                    } else {
                        console.error('Error:'+data.error);
                    }
                });
        }

        likeButton.addEventListener('click', function() {
            fetch('LikeServlet?action=like')
                .then(response => response.json())
                .then(data => {
                    if (data.count !== undefined) {
                        likeCount.textContent = data.count;
                        likeButton.style.color = "blue";
                    } else {
                        console.error('Error:'+data.error);
                    }
                });
        });

        // Initial fetch to load the like count when the page loads
        updateLikeCount();
    });
/**
 * 
 */