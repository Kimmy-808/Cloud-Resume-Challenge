fetch("https://1cych0h3g4.execute-api.us-east-2.amazonaws.com/counter")
  .then(response => response.json())
  .then(data => {
    document.getElementById("visitor-count").innerText = data.count;
  })
  .catch(error => console.error("Error fetching counter:", error));

