#' Get Current PCH Oncology Measures Data.
#'
#' @family Hospital Data
#'
#' @author Steven P. Sanderson II, MPH
#'
#' @seealso \url{https://data.cms.gov/provider-data/topics/hospitals/}
#'
#' @description Get the current PCH Oncology Measures data.
#'
#' @details This function will obtain the current PCH Oncology Measures data
#' from the output of the [healthyR.data::current_hosp_data()] function, that is
#' the required input for the `.data` parameter. This function only returns a single
#' object.
#'
#' @param .data The data that results from the `current_hosp_data()` function.
#'
#' @examples
#' \dontrun{
#' current_hosp_data() |>
#'   current_pch_oncology_measures_hospital_data()
#' }
#'
#' @return
#' Gets the current PCH Oncology Measures Hospital data from the current hospital data file.
#'
#' @name current_pch_oncology_measures_hospital_data
NULL

#' @export
#' @rdname current_pch_oncology_measures_hospital_data

current_pch_oncology_measures_hospital_data <- function(.data) {

    # Variables
    l <- .data

    # Checks
    if (!inherits(l, "current_hosp_data")){
        rlang::abort(
            message = "'.data' must come from the function 'current_hosp_data()",
            use_cli_format = TRUE
        )
    }

    # Manipulations
    # Get the exact files necessary to the ASC
    file_names_vec <- c("pch_oncology_care_measures_hospital")

    asc_list <- l[names(l) %in% file_names_vec]
    # names(asc_list)[1] <-  "pch_hcahps_facility"

    # Make sure there are no 0 length items
    asc_list <- asc_list[lengths(asc_list) > 0]
    ret <- asc_list

    # Return
    attr(ret, ".list_type") <- "pch_oncology_measures_list"
    class(ret) <- c("pch_oncology_measures_list", class(ret))

    return(ret)

}
