package fr.uv1.bettingServices;

import java.util.Calendar;
import java.util.Collection;

public class Competition {
	
	private String competitionName;
	private Calendar competitionDate;
	private Collection<Individual> ind;
	
	public Competition(String competitionName, Calendar competitionDate) {
		this.competitionName = competitionName;
		this.competitionDate = competitionDate;
	}

	public String getCompetitionName() {
		return competitionName;
	}

	public void setCompetitionName(String competitionName) {
		this.competitionName = competitionName;
	}

	public Calendar getCompetitionDate() {
		return competitionDate;
	}

	public void setCompetitionDate(Calendar competitionDate) {
		this.competitionDate = competitionDate;
	}
	
	public void addCompetitor(Individual ind){
		
	}
	public void deleteCompetitor(Individual ind){
		
	}
	public void searchCompetitor(Individual ind){
		
	}

	public String toString() {
		return "Competition [competitionName=" + competitionName
				+ ", competitionDate=" + competitionDate + "]";
	}	

}
