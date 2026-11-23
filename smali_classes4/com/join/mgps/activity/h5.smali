.class public final synthetic Lcom/join/mgps/activity/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/h5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/h5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->x(Lcom/join/mgps/activity/HMCloudMenuActivity;Ljava/lang/Float;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
