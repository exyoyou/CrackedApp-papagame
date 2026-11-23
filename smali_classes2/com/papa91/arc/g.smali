.class public final synthetic Lcom/papa91/arc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/papa91/arc/EmuActivity_psp;

.field public final synthetic c:Lcom/papa91/arc/bean/Request;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/g;->b:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/g;->c:Lcom/papa91/arc/bean/Request;

    iput p3, p0, Lcom/papa91/arc/g;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/g;->b:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/g;->c:Lcom/papa91/arc/bean/Request;

    iget v2, p0, Lcom/papa91/arc/g;->d:I

    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->t(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method
