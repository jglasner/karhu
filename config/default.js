karhu.config = {
  store: new Sammy.Store({name: 'karhu', type: ['local', 'cookie']}),
  per_page: 5,
  datepicker: {
    changeMonth: true,
    changeYear: true,
    minDate: Date.today(),
    defaultDate: (1).year().fromNow()
  }
}