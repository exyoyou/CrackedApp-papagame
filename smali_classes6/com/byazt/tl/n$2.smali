.class public Lcom/byazt/tl/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tl/n;->c(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/tl/n;


# direct methods
.method public constructor <init>(Lcom/byazt/tl/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tl/n$2;->tt:Lcom/byazt/tl/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tl/n$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/tl/n$2;->tt:Lcom/byazt/tl/n;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/byazt/tl/n;->c(Lcom/byazt/tl/n;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/byazt/tl/n$2;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Lcom/byazt/tl/n;->c(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
