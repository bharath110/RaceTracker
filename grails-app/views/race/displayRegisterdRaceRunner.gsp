registered

<table
						class="table table-striped table-bordered table-hover table-condensed">

						<thead>
							<tr bgcolor="#f0f0f0">
								<strong>Registered Details</strong>
							</tr>
						</thead>
						<tr>
							<td>Race Name</td>
							<td>
								${registered?.name}
							</td>
						</tr>
						<tr>
							<td>Start Date</td>
							<td>
								${registered?.startDate}
							</td>
						</tr>
						<tr>
							<td>Race State</td>
							<td>
								${registered?.state}
							</td>
						</tr>
						<tr>
							<td>City</td>
							<td>
								${registered?.city}
							</td>
						</tr>
						<tr>
							<td>Race Distance</td>
							<td>
								${registered?.distance}
							</td>
						</tr>
						<tr>
							<td>Race Cost</td>
							<td>
								${registered?.cost}
							</td>
						</tr>
						<tr>
						<td></td>
							<td><g:formRemote name="myform"
									url="[controller:'Registration', action:'registerForRace']"
									update="raceListDivId">
									<g:hiddenField name="raceid"  value="${selectedRace?.id}"/>
									<g:submitButton name="Register For Race"
										id="buttonregisterForRace" onclick="callRegisterForRcae()"
										class="btn btn-success" />
								</g:formRemote></td>
						</tr>
						</tbody>
					</table>