.class public final synthetic Lcom/join/mgps/fragment/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/z4;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/z4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/x4;->b:Lcom/join/mgps/fragment/z4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x4;->b:Lcom/join/mgps/fragment/z4;

    invoke-static {v0}, Lcom/join/mgps/fragment/z4;->P(Lcom/join/mgps/fragment/z4;)V

    return-void
.end method
