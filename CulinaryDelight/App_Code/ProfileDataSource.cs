using System;
using System.Collections.Generic;


/// <summary>
/// Summary description for ProfileDataSource
/// </summary>
public class ProfileDataSource
{
	public ProfileDataSource()
	{
		
	}

    public List<ProfileWrapper> GetData()
    {
        List<ProfileWrapper> data = new List<ProfileWrapper>();
        data.Add(new ProfileWrapper());
        return data;
    }

    public void UpdateData(ProfileWrapper newData)
    {
        newData.UpdateProfile();
    }

}