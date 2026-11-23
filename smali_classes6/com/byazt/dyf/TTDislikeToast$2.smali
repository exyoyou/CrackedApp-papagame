.class public Lcom/byazt/dyf/TTDislikeToast$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x80b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/TTDislikeToast;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dyf/TTDislikeToast;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/TTDislikeToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/TTDislikeToast$2;->c:Lcom/byazt/dyf/TTDislikeToast;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/TTDislikeToast$2;->c:Lcom/byazt/dyf/TTDislikeToast;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
