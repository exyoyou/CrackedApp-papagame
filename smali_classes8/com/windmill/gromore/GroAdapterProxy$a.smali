.class final Lcom/windmill/gromore/GroAdapterProxy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gromore/GroAdapterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/GroAdapterProxy;

.field private b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/windmill/gromore/GroAdapterProxy;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroAdapterProxy$a;->a:Lcom/windmill/gromore/GroAdapterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/windmill/gromore/GroAdapterProxy$a;->b:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
