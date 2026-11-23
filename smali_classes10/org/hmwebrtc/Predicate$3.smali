.class Lorg/hmwebrtc/Predicate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/Predicate$-CC;->b(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/hmwebrtc/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/Predicate;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Predicate$3;->this$0:Lorg/hmwebrtc/Predicate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/Predicate$-CC;->a(Lorg/hmwebrtc/Predicate;Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lorg/hmwebrtc/Predicate;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/Predicate$-CC;->b(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/Predicate$-CC;->c(Lorg/hmwebrtc/Predicate;Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Predicate$3;->this$0:Lorg/hmwebrtc/Predicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/hmwebrtc/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method
