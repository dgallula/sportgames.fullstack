// import medicinesDal from "../dal/medicines-dal.js"

const getAll = async () => {
    return reusltsDal.getAll()
}

const addResults = async (body) => {
    return await resultsDal.addResults(
        body.teamA, body.teamB, body.scoreA, body.scoreB, body.time, body.category)
}

export { getAll, addResults }

// (teamA, teamB, scoreA, scoreB, time, category