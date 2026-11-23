.class public final synthetic Lcom/join/mgps/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/k;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/h;->b:Lcom/join/mgps/activity/k;

    return-void
.end method


# virtual methods
.method public final onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/h;->b:Lcom/join/mgps/activity/k;

    invoke-static {v0}, Lcom/join/mgps/activity/k;->N(Lcom/join/mgps/activity/k;)V

    return-void
.end method
