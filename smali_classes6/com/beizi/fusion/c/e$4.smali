.class Lcom/beizi/fusion/c/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/beizi/fusion/model/EventItem;

.field final synthetic c:Lcom/beizi/fusion/c/e;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/c/e;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/c/e$4;->c:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/c/e$4;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/c/e$4;->b:Lcom/beizi/fusion/model/EventItem;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e$4;->c:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/a/b;->a(Landroid/content/Context;)Lcom/beizi/fusion/a/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/c/e$4;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/beizi/fusion/c/e$4;->b:Lcom/beizi/fusion/model/EventItem;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/a/b;->a(Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void
.end method
