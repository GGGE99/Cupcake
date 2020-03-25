package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put( "login", new Login() );
        commands.put( "register", new Register() );
        commands.put( "addToBasket", new Basket() );
        commands.put( "oversigt", new Oversigt());
        commands.put( "bestilling", new Bestilling());
        commands.put( "logout", new Logout());
        commands.put( "opretBruger", new OpretBruger());
        commands.put( "removeItem", new RemoveItem());
        commands.put( "bestil", new Bestil());
        commands.put( "addMoney", new AddMoney());
        commands.put( "seeOrder", new SeeOrder());
        commands.put( "updateStatus", new UpdateStatus());
        commands.put( "sletOrder", new SletOrder());

    }

    static Command from( HttpServletRequest request ) {
        String TagetName = request.getParameter( "taget" );
        if ( commands == null ) {
            initCommands();
        }
        return commands.getOrDefault(TagetName, new UnknownCommand() );   // unknowncommand er default.
    }

    abstract String execute( HttpServletRequest request, HttpServletResponse response )
            throws LoginSampleException;

}
