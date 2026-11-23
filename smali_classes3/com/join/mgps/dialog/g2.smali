.class public final synthetic Lcom/join/mgps/dialog/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dialog/h2$a;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dialog/h2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/g2;->b:Lcom/join/mgps/dialog/h2$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g2;->b:Lcom/join/mgps/dialog/h2$a;

    invoke-static {v0}, Lcom/join/mgps/dialog/h2$a;->a(Lcom/join/mgps/dialog/h2$a;)V

    return-void
.end method
