.class public final synthetic Lcom/papa91/arc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/papa91/arc/EmuActivity_psp;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/c;->b:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/c;->b:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->q(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    return-void
.end method
