const submit = document.getElementById('submitBtn');

submit.addEventListener('click', async () => {
  try {

    const response = await fetch(`/quiz/getQuestion`, {
      method: 'GET',
      headers: {
        'Accept': 'application/json',
      },
    });

    if (!response.ok) {
      throw new Error(`Erreur de récupération : ${response.status}`);
    }

    const data = await response.json();

    console.log(data);
  } catch (error) {
    console.error('Erreur lors de la récupération de la question : ' + error);
  }
});

