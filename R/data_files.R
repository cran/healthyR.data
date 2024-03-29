#' Main data file for healthyR
#'
#' A dataset containing many common items found in an administrative dataset at
#' a hospital.
#'
#' \itemize{
#'   \item mrn. Medical Record Number. Unique patient identifier.
#'   \item visit_id. Unique hospital Visit ID. Tied to an mrn
#'   \item visit_start_date_time. The starting datetime of a visit_id
#'   \item visit_end_date_time. The ending datetime of a visit_id
#'   \item total_charge_amount. The total charge in dollars for a visit_id
#'   \item total_amount_due. The toal amount of money still due to a visit_id
#'   \item total_adjustment_amount. The toal amount of money adjusted off of an account for various reasons
#'   \item payer_grouping. The insurance classification of a visit_id
#'   \item total_payment_amount. The total amount of money paid on a visit_id
#'   \item ip_op_flag. A flag that indicates if the patient was admitted or was an outpatient
#'   \item service_line. The hospital service line for the visit_id
#'   \item length_of_stay. The total days a visit_id was admitted to the hospital
#'   \item expected_length_of_stay. The total days a visit_id was expected to be admitted
#'   \item lnmgth_of_stay_threshold. The threshold of the length_of_stay variable before the visit_id is
#'   considered to be an outlier
#'   \item los_outler_flag. A binary indicator of whether or not a visit_id was above the threshold
#'   \item readmit_flag. A binary indicator of whether or not a visit_id was admitted in 30 days
#'   \item readmit_expectation. The readmit rate for the particular visit computed from a benchmark
#'  }
#'
#' @docType data
#' @keywords datasets
#' @name healthyR_data
#' @usage data(healthyR_data)
#' @format A data frame with 187,721 rows and 17 variables
"healthyR_data"
