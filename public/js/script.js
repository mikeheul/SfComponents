$(document).ready(function() {
    $('#searchArticles').on("input", function(e) {
        e.preventDefault();

        // Get the search term from the form
        var searchTerm = $('#searchArticles').val();

        // Send AJAX request to the Symfony controller
        $.ajax({
            url: '/article/search',
            type: 'GET',
            data: { searchTerm: searchTerm },
            success: function(response) {
                // Display search results
                displayResults(response);
            },
            error: function(error) {
                console.log('Error:', error);
            }
        });
    });

    function displayResults(articles) {
        $('.cards').html('')
        articles.forEach((article) => {
            $('.cards').append(
                `<div class="card">
                    <div class="card-img">
                        <img class="card-img-top" src="${article.img}" alt="${article.alt}">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">${article.title}</h5>
                        <p class="card-text">${article.text}</p>
                    </div>
                    <a href="${article.id}" class="btn btn-primary">Voir plus...</a>
                </div>`
            )
        })
    }
})

