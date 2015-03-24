commentForm = document.querySelector '.js-new-comment-form'
heartImage  = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAMp0lEQVR4Xu1bCawV1Rn+zsy9b4OiQCkgyqJSCFBMEWyppNIa2mglpU0KptgggixKFURB27pF0FJEK7WaUqEWExtMjWkTYyvEVtQoLhgRZBMVEBCR9S33zr0z8/f7+2Z6ksnovPt8BVlu8uXMe/dmzv99/3bmzIwREZzMH4c4JcBJjFMC5FpD4DpjOlQDFxhgCIC+HDsBCANgD4D1IfDSfSIb2orAd4zJDQXOFwLAAAfoBgACHCA2E2sd4NWFIo2VcqmoCM4xppsAV7vAT40x/Q0ABeJzGAM9CkXqQ+B1AMt9YAXFKLSG+E3GtBNgvAtMcIChBqgyCQJi51ThlxeAZQ+K7G9zAUj+KheY5xjT3YggNsTYPEKQIBAYg0BkbQjMpXdWVUh+tAPcnTNmkBPZGJN3ozFMzBmqGCLbA+CW34j8pU1qAMO9eq4xj9CQpTmguyuCagA9zjgDQ0aPxsWzZ+MHCxfi0nvuwcgZM3DeJZegW7duqAIQ/XYIj5++2ZibDT8tCXf+8M488BTnGZQTQU0+j7MGDMCwiRMxat48jF62DGOWL8f3FizAN/m/nv36oYbk9bc5oBdtfZyTLdZzfa4IGGtM1dnAn/PGXK5kVK2z+vfHedOnoxeJ1lEEU6VUbTT4pRKadu3Czueew3oauuO11+BH3imLPLINmPaESPBpYrcHHs1xPkfFc130HjUKAydNwpnDh6OmUyc46uUwBERgKIzD3xQOHMCOVauw9v77k/MtWwBMFn5aJcAtxvyW5K931RjHwdApUzBk7lzUdu2KckMDyocOQTiGxWKzUTTGqa5G7rTTkO/cGX5TEzbTU2vmz8fh+nrNV5RElm4BploRrNj9IrGNCDp2745v3HEH+o4ZA8fz4O3di/LhwwAFRhBAdC6K79bVIdelC2p69EDA+V6/9168ShR9X1MQvsi8u0VurVgAhv2Pq415Mq8hSGIjbrsNg2fNgt/YiOKHHyL8+GMEJI/YG4SqDoUaR8PyJFHXuzf2vvIKnmPUfLxjB9Bs1B9uF5kGS94dSPL0/Hj1fFdG2ciHHkLnc85B45YtCOhhIWknNjoaJQLoHOf001Hbpw9qevbE+iVL8O8bb0ShXIYPBD6YoSLPtliAG4zpVAe8TgH6qADDZ87EEHrD++gjeJs3I6Dn1Zg4pdWA2DCNBAEQiKjH4TIa2g8ciMMksnLCBBzct0+F0u9v+aXIrwHgLmPmVxnzC0c9z7T6LlOnA73auGkThJ50jYEhSRPPAdj5ojkDArkcqih4h8GD8caiRXjprrtQ5ndlYGMRGGbbZIYAvzLmBobiIiXfd8QIXPz44+oFNK1bB8NwN66r5JuRbEsRoBFBqHFSW4sv0ag9q1djNcX0SEqAcgBcEALtc8DzLhjRJDCChncdOhRNJK+yOol50ucjRDRKEACoYeTUsDCuuvJKbFm5Ej6AEnD1fNagTAE0F/vT+zXA19oxn7//2GP4Mitww5o1CAsFipyDkzAkPpYUw0JCDVMRas8+G5sefhgbVqxQcgg4j/Z2Hg8WAP2Y7wOmTkVx504YkiHxaK7s+cJ4vkiE9uefj4OsG/8cOxb1nqcCvPwC8O1/ififuRL8Ko3JN6+2cNaFF6IzydevXYuABUjJaxGSBPkE8WhMGMsiWHj3XfS+7DI0vP029rzzDqqBobHxXfr2RR+2Va0v0CizRLPnS4IiNLz1FjoOG4aeF12ETc8+Cxf4+rfIC8C6zxRAV1wu4DIncebIkfB274ZPOI4T5zeQakD2/0OtHe3box/bmsNCtZ91QQl1YmScM3kyDItWSKEY9pZci+ezAO3UlPUoZjc68T2mgYjUaMplCuBSJQK1DP92XNB4778PUa+7rp2gAkhSBJ4rV1OD/iR8aMMGQAQdWCRd9vRw/36YTEHTIUkEATx2nXYdO6KW5/bJwQX6A0CWAN0I1LGtOPSIRyVdjnrCOKdtQUIFBtvwDTTEmU4dmV76CT1PW6rmfFYqpRNPiwLC14ij2NWMukblAXTPFICoVlKu42jIQtRYkjcZIWk+g7ykFTB6RBcuSIppSVjSqX+nF95k8Q2JvOPExbQ2UwAHKBMwYQif+ajeFx6HCUNNJSGabnS2SJXmv+0GtiPQfnKJbfZaIkCjkhPfVw+pEABhv8+MgCTSvdiqXE+fVxIIY2gERFwcQNHQkhTYhShPddnrsIDA9yOStgaYDG+ZCqPAVBAhSOn/SAgQRCvEEnkEnhd/v7slAmwhUKb3i598ApdLUuEJTHRSjnZxUoG3syBZ31Ua/gSMQZFLb3aAWORNmQIIsFG5+mHoNmzfrm1EW5eShxNBMoi2NSRDmLTwh46M3oYPPkAgAgE8tESAErChCvgQQK8jXLl15MVF3nWpiJ8IWQvRMauwtZp05eQDQqqqUOK64si2bfF32zxgc6YAt4s0LDLmRTGmV4G9+eD69egyaBBEWyEREUukQXLMbo0KUxlZe5ye91YEOkztPcDlsNYAcoGIPE9uTZkCKHzg7yEwHsbgMBXMcex47rmACEKtqGEIqZxM69tcSyPAcSC5nFZ9HNy4EUeYwuQQR8XfWrwtLsBKX2RXaEyPUARHtm6FsJi054ZDLVeI4ETQFqP9lbDdIb2qm9a3uvTjxGaIAvR6qCtXhn39e++hnhdvStxv3nvY6gIvVrQjdL8x99UaM6sOQK2IKoW8HtfWoobbXdXc6Mjx2GWumWifzkSwpDNbY+UeJ1mFIdT2gAXaLxTgkbB2rSJDvqTEiQLJa8wXRe6YKXJnRTdGQmAJlZsaGFNHINeslk6GAq+ySoQWx3y7dnC51s4ThutuV0NQPRILq6JEo6CCj4pKxLtNeqzi6nWDkKTuSQZEmWuVchDAt3UAIHH9W0EOhwPg0VZtij5gzLI6YybWAqghqiLkCFchAmPbI1xCRcjX1cHhaKqrYTRCSMJRYewNlHTSIhF3g5CkREEPC0mHJB0o6ACSQmgJQx0URIRLEYpEk0LkAXp/ZqtujXnAwiqRcb5GAWAntV6yAsQEaKRPxDXAJZl4B9dQBAUiz5JoxFvizVUtYAqEJK5dR8maxFWe3S9Ib4M+UdZR5GDAbG71vcE5IhsXG/Ngjod5Vcv2WUs6KUjyDo4SiEhJy68j7DmiKm4y2mAQwVdYEe6dLbK91QIoAmBBWeQnjII+fkTKidVOiOAkCFhR0j9OZvtL7yihJc9ji0Bhvf/OIWDx5747PEvkAGvBTSXgr66NAgUkRYS0hZHJ6ARZewkmzfMJ4onQD3h8vS7q2uT2+PUiT/7eGL1xMSFnoyAaE325gtVhBix5O6blvfV6NJaAB34usqpNH5AIgZtKIlt1grLNNxsNGZfFpoXkjSJjAWWJx7AdwBN58xPg9jZ/QoSK7vOByZzAsyIQmSJYmCxk7yNY4hbW8yKNHCdp6Le5AIprRVb7wJxYAD8lEohkOmSLkFEbJHnuNPLNmEFHvfl/fUZomshiT+RPpYQIKdGQtbOTjfR8t8Jb4iiL/O4akUePykNSPnAdRXjBimCNClO6hKkgDZBodynX+rbP27z/x25gzlF7SoxKN4TAFUWRd72USLCGWyCj1UmG55Pet+RlfSNwJfO+eNQEUEwR2RECl9OA/bYmZKRExsZIKmmLNM/vIeuxbNN7j8lzgpNF3igBPytQ/U9LB0nbuc24wxMmkCSu4Jz1ZWAco3HjUX1OMImrRZ75ozFTHBYgY4yTntfZ2+iSEQE29KHkyyVgAud+4dg+KWpFeKwIzPEAKGwkpNcGJAtc+gLHniP2OhHNMYPknzq6T4pmp8OipcZ8xRgzJ72qExn3+UOLtB4Pr9n7t3KuJcfiUdlsEYCbl4mcRhGmxmSThF1C0m6Gpl3RWeIoKkTumyQy7wv7sLTwswOYQS+t8CLjfUWyQKYh5bdxYfUUIkuvEpn9hX9anP3YPwRMpAhPq9eKlojCEkzAfkcktrZI/gkeTz9uHpefJVKgCFdQhOeLcWG0sKTTkQz7Z/YBV00RKR83AihmihzygXFNIq/FZEoWCUEi4gnyTWxzTcD4G0Uaj8sXJlit99LyMSTyVhwJlqQVwEuEvKIgsobkfzRd5OBx/cbIDJHdJPLDosiGNBEIe2zD/o0ChbtWZP8J8coMiWwv0ZsktsUWRiKFfEnk7QJ/e43IRyfUO0NTRbb6jASPYsRkvSQoUBMwmuR3npAvTbGSbyoDl/lMCz/ZFUTeC4BLNVpO6LfGpoms10goiez5XzskaY6jKdC2o23PMXtzlNvswx3gmSj6R7Harzup3htkqL9cAsb5wNhjRV5x6t1h4pQAJzFOCfAf9BHphsHXvSkAAAAASUVORK5CYII="
shipitImage = "data:image/png;base64,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"

selectElements = =>
  @actions        = commentForm.querySelector '.form-actions'
  @protip         = commentForm.querySelector '.form-actions-protip'
  @close          = @actions.querySelector '.js-comment-and-button'
  @comment        = @actions.querySelector '.primary'
  @textarea       = commentForm.querySelector 'textarea'

if commentForm
  do selectElements

  mutationObserver =
    if WebKitMutationObserver?
      WebKitMutationObserver
    else
      MutationObserver

  observer = new mutationObserver (mutations) ->
    mutations.forEach (mutation) ->
      do selectElements

  observer.observe @actions, childList: true

  button = (text, innerHtml, closable = true) =>
    btn = document.createElement 'button'

    btn.innerHTML = text
    btn.className = 'btn'
    btn.setAttribute 'tabindex', '1'
    btn.setAttribute 'type', 'submit'
    btn.setAttribute 'title', innerHtml

    btn.addEventListener 'click', (event) =>
      do event.preventDefault
      @textarea.value += " #{innerHtml}"

      if closable && @close then do @close.click else do @comment.click

      @textarea.value = ''

    btn

  insertButtons = =>
    wrapper           = document.createElement 'div'
    wrapper.className = 'jose-vs-oss'

    closeButtonGroupTitle               = document.createElement 'span'
    closeButtonGroupTitle.setAttribute 'style', 'float: left; margin: 5px 0px 0px 0px;'
    closeButtonGroupTitle.textContent   = 'Close this issue'

    closeButtonGroup            = document.createElement 'div'
    closeButtonGroup.className  = 'btn-group'
    closeButtonGroup.setAttribute 'style', 'float: left; margin: -35px 0px 0px 0px;'

    openButtonGroupTitle              = document.createElement 'span'
    openButtonGroupTitle.setAttribute 'style', 'float: left; margin: 5px 0px 0px 130px;'
    openButtonGroupTitle.textContent  = 'Keep it open'

    openButtonGroup             = document.createElement 'div'
    openButtonGroup.className   = 'btn-group'

    if @close
      openButtonGroup.setAttribute  'style', 'float: left; margin: -35px 0px 0px 130px;'
    else
      openButtonGroup.setAttribute  'style', 'float: left; margin: -35px 0px 0px 220px;'

    # Sample application
    btn = button 'Sample app', 'Can you please provide a sample application that reproduces the error?', false
    openButtonGroup.appendChild btn

    # Wiki
    btn = button "Wiki", "The wiki is maintained by the community. So if there aren't any up to date instructions, we recommend you to explore the solution yourself and hopefully contribute your findings back!"
    closeButtonGroup.appendChild btn

    # Mailing list
    btn = button "ML", "Please use the mailing list or StackOverflow for questions/help, where a wider community will be able to help you. We reserve the issues tracker for issues only."
    closeButtonGroup.appendChild btn

    # Bug report
    btn = button "Bad bug report", "You need to give us more information on how to reproduce this issue, otherwise there is nothing we can do. Please read CONTRIBUTING.md file for more information about creating bug reports. Thanks!"
    closeButtonGroup.appendChild btn

    # Shipit Squirrel
    btn = button "<img src='#{shipitImage}' width='14' height='14'>", ":shipit:", false
    openButtonGroup.appendChild btn

    # Hearts
    btn = button "<img src='#{heartImage}' width='14' height='14'>", ":heart: :green_heart: :blue_heart: :yellow_heart: :purple_heart:", false
    openButtonGroup.appendChild btn

    wrapper.appendChild closeButtonGroup
    wrapper.appendChild closeButtonGroupTitle if @close

    wrapper.appendChild openButtonGroup
    wrapper.appendChild openButtonGroupTitle if @close

    clearfix = document.createElement 'div'
    clearfix.setAttribute 'style', 'clear:both;'

    wrapper.appendChild clearfix

    @actions.appendChild wrapper

    @protip?.remove()

  do insertButtons if commentForm
