.class public final synthetic Lcom/join/mgps/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/m;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l;->b:Lcom/join/mgps/activity/m;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l;->b:Lcom/join/mgps/activity/m;

    invoke-static {v0}, Lcom/join/mgps/activity/m;->M(Lcom/join/mgps/activity/m;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
