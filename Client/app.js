App ={
    load:async ()=>{
        console.log("Loading the App...")
    }
}

S(() => {
    S(window).load(() => {
        App.load()
    })
})
