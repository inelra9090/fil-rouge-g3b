package fr.uv1.bettingServices;

import java.util.Collection;

public class Team {
	private String nameTeam;
	private Collection<Individual> members;
	
	public Team(String nameTeam, Collection<Individual> members) {
		super();
		this.nameTeam = nameTeam;
		this.members = members;
	}

	public String getNameTeam() {
		return nameTeam;
	}

	public void setNameTeam(String nameTeam) {
		this.nameTeam = nameTeam;
	}

	@Override
	public String toString() {
		return "Team [nameTeam=" + nameTeam + ", members=" + members + "]";
	}
	
	
}
