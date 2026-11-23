.class Lcom/beizi/fusion/work/splash/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/v2/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->aB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$11;->b:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/beizi/fusion/work/splash/a$11;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a$11;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$11;->b:Lcom/beizi/fusion/work/splash/a;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->af(Lcom/beizi/fusion/work/splash/a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
