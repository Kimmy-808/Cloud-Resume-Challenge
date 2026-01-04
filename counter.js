fetch("https://cd5kilshra.execute-api.us-east-2.amazonaws.com/prod/counter")
  .then(response => response.json())
  .then(data => {
    document.getElementById("visitor-count").innerText = data.count;
  })
  .catch(error => console.error("Error fetching counter:", error));
