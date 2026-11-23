.class public final synthetic Lcom/join/mgps/activity/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/q5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/q5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/HMCloudMenuActivity;->p(Lcom/join/mgps/activity/HMCloudMenuActivity;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
