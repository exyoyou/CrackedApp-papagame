.class public abstract Lcom/kongzue/dialogx/interfaces/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/kongzue/dialogx/interfaces/BaseDialog;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/u;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/u;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method
