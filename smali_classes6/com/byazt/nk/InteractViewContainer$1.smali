.class public Lcom/byazt/nk/InteractViewContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0x880
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nk/InteractViewContainer;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nk/InteractViewContainer;


# direct methods
.method public constructor <init>(Lcom/byazt/nk/InteractViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nk/InteractViewContainer$1;->c:Lcom/byazt/nk/InteractViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/InteractViewContainer$1;->c:Lcom/byazt/nk/InteractViewContainer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nk/InteractViewContainer;->c(Lcom/byazt/nk/InteractViewContainer;)Lcom/byazt/oq/RippleView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/oq/RippleView;->tt()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
