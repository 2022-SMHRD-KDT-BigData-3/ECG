let calendar = document.querySelector('.calendar')

const month_names = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

isLeapYear = (year) => {
    return (year % 4 === 0 && year % 100 !== 0 && year % 400 !== 0) || (year % 100 === 0 && year % 400 ===0)
}

getFebDays = (year) => {
    return isLeapYear(year) ? 29 : 28
}

let month_picker = calendar.querySelector('#month-picker')
month_picker.onclick = () => {
    month_list.classList.add('show')
}

generateCalendar = (month, year) => {

    let calendar_days = calendar.querySelector('.calendar-days')
    calendar_days.innerHTML = ''
    let calendar_header_year = calendar.querySelector('#year')

    let days_of_month = [31, getFebDays(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    let currDate = new Date()

    let curr_month = month_names[month]
    month_picker.innerHTML = curr_month
    calendar_header_year.innerHTML = year

    // get first day of month
    
    let first_day = new Date(year, month, 1)

    for (let i = 0; i <= days_of_month[month] + first_day.getDay() - 1; i++) {
        let day = document.createElement('div')
        if (i >= first_day.getDay()) {
            day.classList.add('calendar-day-hover')
            if(i - first_day.getDay() + 1 < 10){
                if(month+1<10){
                day.innerHTML = `<div onclick="diary_select(${year}${0}${month+1}${0}${i - first_day.getDay() + 1})">${i - first_day.getDay() + 1}</div>`
                } else {
                    day.innerHTML = `<div onclick="diary_select(${year}${month+1}${0}${i - first_day.getDay() + 1})">${i - first_day.getDay() + 1}</div>`
                }
            } else {
                if(month+1<10){
                    day.innerHTML = `<div onclick="diary_select(${year}${0}${month+1}${i - first_day.getDay() + 1})">${i - first_day.getDay() + 1}</div>`
                } else {
                    day.innerHTML = `<div onclick="diary_select(${year}${month+1}${i - first_day.getDay() + 1})">${i - first_day.getDay() + 1}</div>`
                }
            
            }
            day.innerHTML += `<span></span>
                            <span></span>
                            <span></span>
                            <span></span>`
            if (i - first_day.getDay() + 1 === currDate.getDate() && year === currDate.getFullYear() && month === currDate.getMonth()) {
                day.classList.add('curr-date')
            }
        }
        calendar_days.appendChild(day)
    }
}



let month_list = calendar.querySelector('.month-list')

month_names.forEach((e, index) => {
    let month = document.createElement('div')
    month.innerHTML = `<div data-month="${index}">${e}</div>`
    month.querySelector('div').onclick = () => {
        month_list.classList.remove('show')
        curr_month.value = index
        generateCalendar(curr_month.value, curr_year.value)
    }
    month_list.appendChild(month)
})


let currDate = new Date()

let curr_month = {value: currDate.getMonth()}
let curr_year = {value: currDate.getFullYear()}

generateCalendar(curr_month.value, curr_year.value)
console.log("1");
document.querySelector('#prev-month').onclick = () => {
       console.log("2");
    if(curr_month.value<=0){
        curr_month.value=11;
        curr_year.value--
    }else  if(curr_month.value>=0){
        curr_month.value--
    }
    console.log(curr_month.value);
    generateCalendar(curr_month.value, curr_year.value)
}

document.querySelector('#next-month').onclick = () => {
    if(curr_month.value>=11){
        curr_month.value=0;
        curr_year.value++
    }else if(curr_month.value<=11){
        curr_month.value++
    }
    console.log(curr_month.value);
    generateCalendar(curr_month.value, curr_year.value)
}

let dark_mode_toggle = document.querySelector('.dark-mode-switch')

dark_mode_toggle.onclick = () => {
    document.querySelector('body').classList.toggle('light')
    document.querySelector('body').classList.toggle('dark')
}

function diary_select(checkdate) {

    console.log("click diary_select");
    console.log("확인"+checkdate);
    let id = document.getElementById('idvo').innerText;
    console.log("id값 :"+id);
    location.href="diaryselect.do?id="+id+"&checkdate="+checkdate; 
 }
 