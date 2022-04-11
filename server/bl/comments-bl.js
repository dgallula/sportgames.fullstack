// import medicinesDal from "../dal/medicines-dal.js"

const getAll = async () => {
    return commentsDal.getAll()
}

const addComments = async (body) => {
    return await commentsDal.addComments(
        body.time, body.note, body.resultId)
}

export { getAll, addComments }

// (time, note, resultId)