package apiserver

type APIServer struct {}

// New ...
func New() *APIServer {
	return &APIServer()
}

func (s *APIServer) Start() error {
	return New()
}