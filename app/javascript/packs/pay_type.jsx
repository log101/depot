import React from 'react'
import ReactDOM from 'react-dom'
import PayTypeSelector from 'PayTypeSelector'

document.addEventListener('turbolinks:load', function() {
    const element = document.getElementById("pay-type-component");
    ReactDOM.render(<PayTypeSelector />, element);
})