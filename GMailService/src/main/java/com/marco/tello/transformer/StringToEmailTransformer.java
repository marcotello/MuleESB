package com.marco.tello.transformer;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
import org.mule.transformer.types.DataTypeFactory;

public class StringToEmailTransformer extends AbstractMessageTransformer
{

	public StringToEmailTransformer()
    {
        super();
        setReturnDataType(DataTypeFactory.STRING);
    }

    @Override
    public Object transformMessage(MuleMessage message, String outputEncoding) throws TransformerException
    { 	
        String mailBody = (String) message.getPayload();

        String body =  mailBody + "Hi there, this is a mail sent from Mule ESB\n\n";

        return body;
    }
}
