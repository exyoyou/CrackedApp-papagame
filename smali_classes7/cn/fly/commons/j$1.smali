.class Lcn/fly/commons/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/j;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/fly/commons/j;


# direct methods
.method constructor <init>(Lcn/fly/commons/j;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/j$1;->b:Lcn/fly/commons/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/j$1;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/fly/commons/j$1;->b:Lcn/fly/commons/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;)Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lcn/fly/commons/j$1;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;Ljava/util/concurrent/CountDownLatch;ILjava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
