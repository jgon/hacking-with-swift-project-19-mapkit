# Hacking with Swift - Project 19 - MapKit

MKMapView, MKAnnotation, MKPinAnnotationView, CLLocationCoordinate2D.

## Topics covered

## Additional stuff

### must implement title when canShowCallout is YES on corresponding view <MKPinAnnotationView exception

On startup the application crashes with the following exception:

```Terminating app due to uncaught exception 'NSGenericException', reason: '<Project19.Capital: 0x7fae3dee34a0> must implement title when canShowCallout is YES on corresponding view <MKPinAnnotationView```.

This exception is thrown after renaming ```Capital.title``` property to ```Capital.name```.
But the ```MKAnnotation``` protocol requires a ```title``` property.

### Using a view controller instead of an alert controller

An alternative showing a view controller with a parent controller embedded in a navigation controller:

![](/Images/map view.png)

![](/Images/detail view.png)
