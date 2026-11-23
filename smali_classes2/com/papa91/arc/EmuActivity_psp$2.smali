.class Lcom/papa91/arc/EmuActivity_psp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->postCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$2;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$cmd:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$param:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$2;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$cmd:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$2;->val$param:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->processCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
