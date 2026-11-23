.class public final Lcom/android/dx/Local;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final code:Lcom/android/dx/Code;

.field private reg:I

.field private spec:Lcom/android/dx/rop/code/RegisterSpec;

.field final type:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/Code;Lcom/android/dx/TypeId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/TypeId<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/dx/Local;->reg:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/dx/Local;->code:Lcom/android/dx/Code;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/dx/Local;->type:Lcom/android/dx/TypeId;

    .line 10
    .line 11
    return-void
.end method

.method static get(Lcom/android/dx/Code;Lcom/android/dx/TypeId;)Lcom/android/dx/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/dx/Local<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/dx/Local;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/dx/Local;-><init>(Lcom/android/dx/Code;Lcom/android/dx/TypeId;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/android/dx/TypeId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/Local;->type:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    return-object v0
.end method

.method initialize(I)I
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/dx/Local;->reg:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/dx/Local;->type:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/dx/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/dx/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/dx/Local;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/Local;->type:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/dx/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getCategory()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method spec()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/dx/Local;->code:Lcom/android/dx/Code;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/dx/Code;->initializeLocals()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/dx/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dx/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 22
    .line 23
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "v"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/dx/Local;->reg:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "("

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/dx/Local;->type:Lcom/android/dx/TypeId;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
