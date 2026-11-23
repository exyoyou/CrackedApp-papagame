.class public final synthetic Lcom/join/mgps/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/ClassifyAndRankActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ClassifyAndRankActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/f;->b:Lcom/join/mgps/activity/ClassifyAndRankActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f;->b:Lcom/join/mgps/activity/ClassifyAndRankActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->j(Lcom/join/mgps/activity/ClassifyAndRankActivity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
