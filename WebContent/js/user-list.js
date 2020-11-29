function confirmDelete()
{
    if (confirm("Do You Really Want To Delete This User ? "))
    {
        return true;
    }
    else{
        return false;
    }
}

function confirmEdit()
{
    if (confirm("The Changes Will Be Permanent ? Are You Sure ? "))
    {
        return true;
    }
    else{
        return false;
    }
}