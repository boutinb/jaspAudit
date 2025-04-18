#
# Copyright (C) 2013-2018 University of Amsterdam
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# When making changes to this file always mention @koenderks as a
# reviewer in the pull Request.

auditBayesianEvaluation <- function(jaspResults, dataset, options, ...) {
  set.seed(options[["mcmc.seed"]])
  options(
    mc.iterations = options[["iter"]],
    mc.warmup = options[["warmup"]],
    mc.chains = options[["chains"]],
    jfa.iterations = options[["iter"]]
  )
  # For the evaluation constituents, see auditCommonFunctions.R
  .jfaEvaluationStage(options, jaspResults, workflow = FALSE)
  .jfaCreatedByText(jaspResults)
}
