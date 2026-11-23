.class public final synthetic Lcom/join/mgps/va/overmind/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/va/overmind/VApp;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/va/overmind/VApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/va/overmind/j;->b:Lcom/join/mgps/va/overmind/VApp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/overmind/j;->b:Lcom/join/mgps/va/overmind/VApp;

    invoke-static {v0}, Lcom/join/mgps/va/overmind/VApp;->a(Lcom/join/mgps/va/overmind/VApp;)V

    return-void
.end method
