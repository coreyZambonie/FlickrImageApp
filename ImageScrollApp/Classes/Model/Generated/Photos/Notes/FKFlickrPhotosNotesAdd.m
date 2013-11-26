//
//  FKFlickrPhotosNotesAdd.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosNotesAdd.h" 

@implementation FKFlickrPhotosNotesAdd

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.notes.add";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.note_x) {
		valid = NO;
		[errorDescription appendString:@"'note_x', "];
	}
	if(!self.note_y) {
		valid = NO;
		[errorDescription appendString:@"'note_y', "];
	}
	if(!self.note_w) {
		valid = NO;
		[errorDescription appendString:@"'note_w', "];
	}
	if(!self.note_h) {
		valid = NO;
		[errorDescription appendString:@"'note_h', "];
	}
	if(!self.note_text) {
		valid = NO;
		[errorDescription appendString:@"'note_text', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.note_x) {
		[args setValue:self.note_x forKey:@"note_x"];
	}
	if(self.note_y) {
		[args setValue:self.note_y forKey:@"note_y"];
	}
	if(self.note_w) {
		[args setValue:self.note_w forKey:@"note_w"];
	}
	if(self.note_h) {
		[args setValue:self.note_h forKey:@"note_h"];
	}
	if(self.note_text) {
		[args setValue:self.note_text forKey:@"note_text"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosNotesAddError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosNotesAddError_UserCannotAddNotes:
			return @"User cannot add notes";
		case FKFlickrPhotosNotesAddError_MissingRequiredArguments:
			return @"Missing required arguments";
		case FKFlickrPhotosNotesAddError_MaximumNumberOfNotesReached:
			return @"Maximum number of notes reached";
		case FKFlickrPhotosNotesAddError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosNotesAddError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosNotesAddError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosNotesAddError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosNotesAddError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosNotesAddError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosNotesAddError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosNotesAddError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosNotesAddError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosNotesAddError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosNotesAddError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
