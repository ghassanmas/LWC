const router = require("express").Router();
const validate = require("express-validation");
const Airtable = require("airtable");
const base = Airtable.base(process.env.AIRTABLE_BASE);
const formValidator = require("../validation/form");

Airtable.configure({
  endpointUrl: "https://api.airtable.com",
  apiKey: process.env.AIRTABLE_API_KEY
});

const postController = (req, res, next) => {
  const newRow = Object.assign(req.body, { DOB: new Date(req.body.DOB) });
  base(process.env.AIRTABLE_TABLE).create(newRow, (err, record) => {
    if (err) {
      console.log("Error with Airtable: ", err);
      return res.json({ success: false });
    }
    return res.json({ success: true });
  });
};

router.route("/help_form").post(validate(formValidator), postController);

module.exports = router;
