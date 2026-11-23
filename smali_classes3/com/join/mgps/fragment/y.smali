.class public final synthetic Lcom/join/mgps/fragment/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/v$l;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/v$l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/y;->b:Lcom/join/mgps/fragment/v$l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y;->b:Lcom/join/mgps/fragment/v$l;

    invoke-static {v0}, Lcom/join/mgps/fragment/v$l;->b(Lcom/join/mgps/fragment/v$l;)V

    return-void
.end method
