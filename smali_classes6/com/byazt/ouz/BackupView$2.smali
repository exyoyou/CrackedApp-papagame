.class public Lcom/byazt/ouz/BackupView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x56d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/NativeExpressView;

.field public final synthetic tt:Lcom/byazt/ouz/BackupView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/BackupView;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/BackupView$2;->tt:Lcom/byazt/ouz/BackupView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/BackupView$2;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView$2;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getExpressInteractionListener()Lcom/byazt/ouz/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
