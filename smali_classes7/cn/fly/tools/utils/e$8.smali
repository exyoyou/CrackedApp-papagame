.class Lcn/fly/tools/utils/e$8;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/e;->h()Landroid/location/GnssStatus$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/e;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/e$8;->a:Lcn/fly/tools/utils/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcn/fly/tools/utils/e$8;->a:Lcn/fly/tools/utils/e;

    .line 5
    .line 6
    invoke-static {p1}, Lcn/fly/tools/utils/e;->c(Lcn/fly/tools/utils/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
