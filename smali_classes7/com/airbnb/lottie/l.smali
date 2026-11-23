.class public final synthetic Lcom/airbnb/lottie/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/l;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/d0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/c1;

    move-result-object v0

    return-object v0
.end method
