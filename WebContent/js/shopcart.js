function toggleSuccessMsg(display) {
    const successMsg = document.getElementById('successMsg')

    if (display) {
      successMsg.classList.remove('hidden')
    } else {
      successMsg.classList.add('hidden')
    }
}

toggleSuccessMsg(true)
