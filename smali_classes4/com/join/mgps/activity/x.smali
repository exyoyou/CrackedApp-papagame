.class public final synthetic Lcom/join/mgps/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/x;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/x;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->k(Lcom/join/mgps/activity/CloudGameZoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
