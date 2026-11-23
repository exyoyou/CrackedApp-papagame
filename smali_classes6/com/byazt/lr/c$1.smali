.class public Lcom/byazt/lr/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lr/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lr/c;


# direct methods
.method public constructor <init>(Lcom/byazt/lr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lr/c$1;->c:Lcom/byazt/lr/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/lr/c$1;->c:Lcom/byazt/lr/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/lr/c;->c(Lcom/byazt/lr/c;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-string p1, "lp_app_dialog_cancel"

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/byazt/lr/sp;->c(Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
